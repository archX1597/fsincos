class c_1967_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1967_2;
    c_1967_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xx1xzzxz011z1z01100001x1zx1z00xzzzzxzzxzxxzzxxxzzzxxzzxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
