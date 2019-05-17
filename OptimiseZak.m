clear 
close all 

Lrange = linspace(0.1, 0.25, 10);
NoTrange = 5:3:15;
NoBrange = 5:2:20;
Y = 0.014;
a = 0.34;
n_shell_range = [2 2];
n_tube_range = [1 2];

Eff_L = [];
for n_shell = n_shell_range
    for n_tube = n_tube_range
        for L = Lrange 
            for NoT = NoTrange
                for NoB = NoBrange
                design = [L,NoT,NoB,Y,a,n_shell,n_tube];
                [eff, val] = solveDesign(design);
                    if val
                        Eff_L = [Eff_L; design, eff];
                    end
                end
            end
        end
    end
end

Eff_L_max = max(Eff_L);



