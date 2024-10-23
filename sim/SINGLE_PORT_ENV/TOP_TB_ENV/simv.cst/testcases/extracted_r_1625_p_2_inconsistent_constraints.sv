class c_1625_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1625_2;
    c_1625_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x10x0zxxz100xzz1z0zzz0x11x1x00xxzxxzzzxxzzzxxxxxxxxxxzxzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
