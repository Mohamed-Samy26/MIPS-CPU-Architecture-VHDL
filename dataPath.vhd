library IEEE; 
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use work.DataPathPackage.all;


entity datapath is -- MIPS datapath
    port(clk, reset: in STD_LOGIC;
    readdata: in STD_LOGIC_VECTOR(31 downto 0);
    instr: in STD_LOGIC_VECTOR(31 downto 0);
    memtoreg, pcsrc,alusrc,regwrite,regdst,jump: in STD_LOGIC;
    aluoperation: in STD_LOGIC_VECTOR(2 downto 0);
    zero: out STD_LOGIC;
    pc: out STD_LOGIC_VECTOR(31 downto 0);
    aluout, writedata: out STD_LOGIC_VECTOR(31 downto 0));
end;

architecture struct of datapath is

signal pcjump,pcnext, pcnextbr, pcplus4,pcbranch: STD_LOGIC_VECTOR(31 downto 0);
signal signimm, signimmsh: STD_LOGIC_VECTOR(31 downto 0);
signal srca, srcb, result: STD_LOGIC_VECTOR(31 downto 0);
signal wdata: STD_LOGIC_VECTOR(31 downto 0);
signal writereg: STD_LOGIC_VECTOR(4 downto 0);
signal pct,aluoutt, writedatat:  STD_LOGIC_VECTOR(31 downto 0);
begin
pc<=pct;
writedata<=writedatat;
aluout<=aluoutt;
-- next PC logic
pcjump <= pcplus4(31 downto 28) & instr(25 downto 0) & "00";
pcreg: flopr generic map(32) port map(clk, reset, pcnext, pct);
pcadd1: adder port map(pct, X"00000004", pcplus4);
immsh: sl2 port map(signimm, signimmsh);
pcadd2: adder port map(pcplus4, signimmsh, pcbranch);
pcbrmux: mux2 generic map(32) port map(pcplus4, pcbranch, pcsrc, pcnextbr);
pcmux: mux2 generic map(32) port map(pcnextbr, pcjump, jump,
pcnext);

-- register file logic
rf: regfile port map(clk, regwrite, instr(25 downto 21),
                     instr(20 downto 16), writereg, wdata, srca,writedatat);
wrmux: mux2 generic map(5) port map(instr(20 downto 16),
                     instr(15 downto 11),regdst,writereg);
resmux: mux2 generic map(32) port map(aluoutt, readdata,
                      memtoreg, wdata);
se: signext port map(instr(15 downto 0), signimm);


-- ALU logic

srcbmux: mux2 generic map(32) port map(writedatat, signimm,alusrc, srcb);
mainalu: alu port map(srca, srcb, aluoperation, aluoutt, zero);
end;
