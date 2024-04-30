library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fsm is
	port(
        -- ENTREES
		clk : in std_logic;
		rst : in std_logic;
		-- ...
		-- SORTIES
		-- ...
	);
end entity;

architecture behavioral of fsm is
	type state_type is (init, ...);    -- Enumérer tous les états de la FSM ici
	signal future_state  : state_type; -- Etat futur, calculé à partir des entrées et de l'état présent
	signal current_state : state_type; -- Etat présent, reçoit future_state à chaque coup d'horloge

	begin

	-- Description du registre d'états
	-- Fonction SEQUENTIELLE
	process(clk, rst)
	begin
		if rst = '1' then
			current_state <= init;
		elsif (clk'event and clk ='1') then
			current_state <= future_state;
		end if;
	end process;

	-- Description du calcul de l'état futur
	-- Fonction COMBINATOIRE
	process(input, current_state)
	begin
		case current_state is
			when ... =>                                   -- when 1er état ...
				if    ... = ... then future_state <= ...; --   if entrée = valeur1 then future_state <= état suivant1
				elsif ... = ... then future_state <= ...; --   if entrée = valeur2 then future_state <= état suivant2
				else                 future_state <= ...; --   etc.
				end if;
			when ... =>                                   -- when 2ème état ...
				if    ... = ... then future_state <= ...; --   if entrée = valeur1 then future_state <= état suivant1
				elsif ... = ... then future_state <= ...; --   if entrée = valeur2 then future_state <= état suivant2
				else                 future_state <= ...; --   etc.
				end if;
            -- etc.
			when others =>
				future_state <= current_state;
		end case;
	end process;

	-- Description du calcul des sorties
	-- Fonction COMBINATOIRE
	process(current_state)
	begin
		case current_state is
			when ... =>     -- when 1er état
                ... <= ...; --   assignation Sortie1 <= valeur1
                ... <= ...; --   assignation Sortie2 <= valeur2
                -- etc.
			when ... =>     -- when 2ème état
                ... <= ...; --   assignation Sortie1 <= valeur1
                ... <= ...; --   assignation Sortie2 <= valeur2
                -- etc.
			-- etc.
			when others =>
                ... <= ...; -- Cas de défaut (ex. sortie <= 'X')
		end case;
	end process;
end behavioral;
