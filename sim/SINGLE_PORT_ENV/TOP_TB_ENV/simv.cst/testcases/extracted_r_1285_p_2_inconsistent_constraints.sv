class c_1285_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1285_2;
    c_1285_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10000z111z100xx11xxzz1x1xx100100xxzzxxzxxxxzxxxzxxzzxxzzzzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
