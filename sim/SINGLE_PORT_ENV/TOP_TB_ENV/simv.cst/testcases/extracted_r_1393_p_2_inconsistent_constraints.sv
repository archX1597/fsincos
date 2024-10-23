class c_1393_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1393_2;
    c_1393_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xxzxzx0x0z0xx1x0x1z0xxxx11x1zzzxzxxxzzxzzxxxxzxxzxxxzzzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
