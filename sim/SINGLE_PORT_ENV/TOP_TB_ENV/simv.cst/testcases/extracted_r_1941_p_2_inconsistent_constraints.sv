class c_1941_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1941_2;
    c_1941_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1x0zxz1z10xxxz0x00x1x0z0xz11x0zxxxxzzzxxxzxxzzzxzzxzxzzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
