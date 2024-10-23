class c_1300_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1300_2;
    c_1300_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0110zzz00x1001z0z0xx00z0x100x1xxzxzxzzxzzzzxxzxzxxzxxxzzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
