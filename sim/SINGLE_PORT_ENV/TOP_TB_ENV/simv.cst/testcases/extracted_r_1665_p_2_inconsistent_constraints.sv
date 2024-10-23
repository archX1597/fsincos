class c_1665_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1665_2;
    c_1665_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z100z101xzz0001001001z00xxxxx0x1xzzxxzxxxzxzzxzxxxzzzzzzzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
