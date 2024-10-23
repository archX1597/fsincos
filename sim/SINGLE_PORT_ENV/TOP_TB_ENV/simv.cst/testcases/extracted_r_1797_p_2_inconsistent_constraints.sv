class c_1797_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1797_2;
    c_1797_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z1x1xzz0zz0x1z1z00101x0x1xz1xxzxzzzzxzxzzxzzzxzxxxzxzzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
