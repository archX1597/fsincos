class c_1039_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1039_2;
    c_1039_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0z111z110x01x1z1x00111xzzzx101zxxzxxzxzxzzzzxxxzzzzzzxzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
