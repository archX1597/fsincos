class c_1021_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1021_2;
    c_1021_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z10011z01110111x1zx0xz1z1zxxz0xzxxxzxxxxzzzxzxzxzzxzxzxxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
