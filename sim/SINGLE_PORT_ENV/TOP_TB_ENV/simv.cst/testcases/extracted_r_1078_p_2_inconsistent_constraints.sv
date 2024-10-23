class c_1078_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1078_2;
    c_1078_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1z101x1xx1z11x11110xxx011x1zzxzzxzxzzxxzzzxxzxxxzzzzxxxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
