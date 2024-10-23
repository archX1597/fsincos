class c_1145_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1145_2;
    c_1145_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0z0zzzzz0x0xxx11xzzz0x1x0z11z1xzzzxzzxzxzzxxzzzzxxzxxzxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
