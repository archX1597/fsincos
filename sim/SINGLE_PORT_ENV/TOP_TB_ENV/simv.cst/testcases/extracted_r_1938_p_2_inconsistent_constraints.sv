class c_1938_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1938_2;
    c_1938_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx1xzzxzzz011x10xx11zxxz110xz10xxxxxzzzzzzxxxxzxzxzxzzzzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
