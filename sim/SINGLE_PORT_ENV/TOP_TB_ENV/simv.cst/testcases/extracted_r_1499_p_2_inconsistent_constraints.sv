class c_1499_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1499_2;
    c_1499_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxx0xzz1zxz11xz001101x0zz0z01xxxxxzzzzzxzzxzzzzxxxxzxzxzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
