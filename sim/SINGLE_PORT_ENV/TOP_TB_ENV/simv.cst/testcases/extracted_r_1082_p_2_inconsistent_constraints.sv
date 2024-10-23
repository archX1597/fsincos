class c_1082_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1082_2;
    c_1082_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz000011x0x0xxz100zz1x01xx1zz100zxxzxzxzxzxzxxxxxzxzxzxzxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
