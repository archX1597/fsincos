class c_1036_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1036_2;
    c_1036_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x0z1x000z000111x0zx1xz0x011z01zzzxzxzxxzxzxzxzxzxzzzxxzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
