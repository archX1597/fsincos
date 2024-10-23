class c_1228_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1228_2;
    c_1228_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0zz1x0z01xz1xz0xxx0xz011xz11zxzzxzzzxzxxzxzxzxzxxxzzzzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
