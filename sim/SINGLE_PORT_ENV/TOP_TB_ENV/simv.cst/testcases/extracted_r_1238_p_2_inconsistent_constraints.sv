class c_1238_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1238_2;
    c_1238_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x01xz1x1xz0100111100111xx00z101xzzzxzzzzzzzzxzzxxzxzzxzxxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
