class c_1928_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1928_2;
    c_1928_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzzz000zzzz1x1110z010xz00z11xx1xxzxzxzxxzzxxxxzzxzxxzzzzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
