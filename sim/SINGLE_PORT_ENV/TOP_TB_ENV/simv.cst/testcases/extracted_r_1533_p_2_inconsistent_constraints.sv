class c_1533_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1533_2;
    c_1533_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z00110101111zx1xz1xx11xxxx0z10xzzzxxzxzxzxzzxzzzzzxxzzzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
