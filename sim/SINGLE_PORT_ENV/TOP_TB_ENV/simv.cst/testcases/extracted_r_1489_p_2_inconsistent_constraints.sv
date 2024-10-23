class c_1489_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1489_2;
    c_1489_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1x01xzxx01zz1z01x1000xx1z010x0xzzzxxxzzxxxxxzzzxzzzzzxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
