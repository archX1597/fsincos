class c_1569_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1569_2;
    c_1569_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z011zx010x110zxx1011100101x11x0zzzxxxzzzzzzzzzxxxxxzzzzxxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
