class c_1491_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1491_2;
    c_1491_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxx1x0xx00x1x1zxxx001000xzzxz10zxxzzxzxxxzxzxzzzxxxzzxxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
