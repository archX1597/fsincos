class c_1325_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1325_2;
    c_1325_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11000xz101x1x1z0xz01x010xz111011xzxzzxxxzxzzzzzxzzzxxzzxzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
