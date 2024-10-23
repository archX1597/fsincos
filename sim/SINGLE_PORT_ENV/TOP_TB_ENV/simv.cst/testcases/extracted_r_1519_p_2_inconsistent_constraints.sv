class c_1519_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1519_2;
    c_1519_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzzxxxxz10zx1xxzx1z001xxx1011zxzxzzzzxzzxxxxxxxxxzxxxxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
