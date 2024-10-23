class c_1816_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1816_2;
    c_1816_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zz10xz1z0zx0z1x0zz1zzzzzx1zzx0zzzxzxxzxzxzxzzxxxzzzxzxzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
