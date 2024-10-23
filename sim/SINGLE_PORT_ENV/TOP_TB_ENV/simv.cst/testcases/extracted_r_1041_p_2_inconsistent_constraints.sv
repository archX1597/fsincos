class c_1041_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1041_2;
    c_1041_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100z1x10z1z0000000zxzz0zx1zz0z0zxzxzzxzzxzzzzxxxzzzzzzzxxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
