class c_1249_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1249_2;
    c_1249_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zxxx1zx1x0xzxz100x01xxz000100zzzxzxzxzxxxzxxxxzxxzzxxzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
