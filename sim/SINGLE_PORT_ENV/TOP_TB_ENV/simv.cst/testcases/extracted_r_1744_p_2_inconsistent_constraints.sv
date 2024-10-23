class c_1744_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1744_2;
    c_1744_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1001z100zzz011z1zxz0zzzzzz01x0x0zzxxxxxxxzxzxxxzzxxxzxzxxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
