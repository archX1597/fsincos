class c_1912_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1912_2;
    c_1912_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz00101001x0z1xz1x010zxzzx10zx0xzzzzxxxzzxzxxxxxzzzzzxzzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
