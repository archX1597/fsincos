class c_1845_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1845_2;
    c_1845_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0x1101z1x0xzz1xx01xz0xxzz0z101xzzxzxzzzzzxxxzxxzxzxzzzxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
