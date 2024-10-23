class c_1745_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1745_2;
    c_1745_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zx0000x0x1000011zz01001zx1011xxzzxxxxxzxxzxzzzxzzzxzxxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
