class c_1109_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1109_2;
    c_1109_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110x10xzxx10xxz1111zzx101x0zzxzzxxzxxzzzzxxxzzxxzzxxzzzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
