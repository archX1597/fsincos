class c_1860_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1860_2;
    c_1860_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxz1x0z0z0x0x0011xz001zxzz0xx11xzzxxzxxzxzzxzxzxzzzzxxxxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
