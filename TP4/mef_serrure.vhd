library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mef_serrure is
	port(
        -- ENTREES
		clk : in std_logic;
		rst : in std_logic;
		X : in std_logic_vector(3 downto 0);
		-- SORTIES
		Y : out std_logic_vector(2 downto 0);
		O : out std_logic
	);
end entity;

architecture behavioral of mef_serrure is
	type state_type is (A,B,C,D,E,F,G,H,I);    -- Enumérer tous les états de la mef_serrure ici
	signal future_state  : state_type; -- Etat futur, calculé à partir des entrées et de l'état présent
	signal current_state : state_type; -- Etat présent, reçoit future_state à chaque coup d'horloge

	begin

	-- Description du registre d'états
	-- Fonction SEQUENTIELLE
	process(clk, rst)
	begin
		if rst = '1' then
			current_state <= A;
		elsif (clk'event and clk ='1') then
			current_state <= future_state;
		end if;
	end process;

	-- Description du calcul de l'état futur
	-- Fonction COMBINATOIRE
	process(X, current_state)
	begin
		case current_state is
			when A =>                                   -- when 1er état ...
				if X = "1000" then future_state <= B; --   if entrée = valeur1 then future_state <= état suivant1
				elsif X = "0000" then future_state <= A; --   if entrée = valeur2 then future_state <= état suivant2
				else future_state <= F; --   etc.
				end if;
			when B =>                                   -- when 2ème état ...
				if X = "1100" then future_state <= C; --   if entrée = valeur1 then future_state <= état suivant1
				elsif X = "1000" then future_state <= B; --   if entrée = valeur2 then future_state <= état suivant2
				else future_state <= G; --   etc.
				end if;
            when C =>                                   -- when 1er état ...
				if X = "1110" then future_state <= D; --   if entrée = valeur1 then future_state <= état suivant1
				elsif X = "1100" then future_state <= C; --   if entrée = valeur2 then future_state <= état suivant2
				else future_state <= G; --   etc.
				end if;
			when D =>                                   -- when 2ème état ...
				if X = "1111" then future_state <= E; --   if entrée = valeur1 then future_state <= état suivant1
				elsif X = "1110" then future_state <= D; --   if entrée = valeur2 then future_state <= état suivant2
				else future_state <= H; --   etc.
				end if;
			when F =>                                   -- when 1er état ...
				if X = "1000" then future_state <= F; --   if entrée = valeur1 then future_state <= état suivant1
				else future_state <= G; --   etc.
				end if;
			when G =>                                   -- when 2ème état ...
				if X = "1100" then future_state <= G; --   if entrée = valeur1 then future_state <= état suivant1
				else future_state <= H; --   etc.
				end if;
            when H =>                                   -- when 1er état ...
				if X = "1110" then future_state <= H; --   if entrée = valeur1 then future_state <= état suivant1
				else future_state <= I; 
				end if;
			when others =>
				future_state <= current_state;
		end case;
	end process;

	-- Description du calcul des sorties
	-- Fonction COMBINATOIRE
	process(current_state)
	begin
		case current_state is
			when A =>     -- when 1er état
                Y <= "000"; --   assignation Sortie1 <= valeur1
                O <= '0'; --   assignation Sortie2 <= valeur2
			when B =>     -- when 2ème état
                Y <= "001"; --   assignation Sortie1 <= valeur1
                O <= '0'; --   assignation Sortie2 <= valeur2
			when C =>     -- when 1er état
                Y <= "010"; --   assignation Sortie1 <= valeur1
                O <= '0'; --   assignation Sortie2 <= valeur2
			when D =>     -- when 2ème état
                Y <= "011"; --   assignation Sortie1 <= valeur1
                O <= '0'; --   assignation Sortie2 <= valeur2
			when E =>     -- when 1er état
                Y <= "100"; --   assignation Sortie1 <= valeur1
                O <= '1'; --   assignation Sortie2 <= valeur2
			when F =>     -- when 2ème état
                Y <= "001"; --   assignation Sortie1 <= valeur1
                O <= '0'; --   assignation Sortie2 <= valeur2
			when G =>     -- when 1er état
                Y <= "010"; --   assignation Sortie1 <= valeur1
                O <= '0'; --   assignation Sortie2 <= valeur2
			when H =>     -- when 2ème état
                Y <= "011"; --   assignation Sortie1 <= valeur1
                O <= '0'; --   assignation Sortie2 <= valeur2
			when I =>     -- when 1er état
                Y <= "100"; --   assignation Sortie1 <= valeur1
                O <= '0'; --   assignation Sortie2 <= valeur2
			when others =>
				Y <= "000"; --   assignation Sortie1 <= valeur1
                O <= '0'; -- Cas de défaut (ex. sortie <= 'X')
		end case;
	end process;
end behavioral;
