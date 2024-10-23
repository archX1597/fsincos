class c_1232_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1232_2;
    c_1232_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xx1z1z00zzz11010000zxxzz0z101zxxzxzxzxxzzzzxxxzzxzzzxxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
