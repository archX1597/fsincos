class c_1461_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1461_2;
    c_1461_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z100zzzx0zz000z11zz10100xxxx1011zxxzxxzzzzxxzxxzxxxzxzxzxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
