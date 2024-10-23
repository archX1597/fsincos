class c_1696_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1696_2;
    c_1696_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01xz10z1x11xzz1110xz101xx1x110xzzxzzzzzxzzxxzxzxzzzxzzzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
