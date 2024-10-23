class c_1654_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1654_2;
    c_1654_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zz0x1x00z11x1z1xx101xxx1z0xzz1xxzxzzzzxzzzxxxzxzxzxzzzxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
