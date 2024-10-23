class c_1013_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1013_2;
    c_1013_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx11x1x0z00z10xz1000xxx0z1010xzxxzzxxxzxxzxxxzzxxzxzxxzzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
