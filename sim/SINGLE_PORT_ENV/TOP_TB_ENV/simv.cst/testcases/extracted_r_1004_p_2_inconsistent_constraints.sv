class c_1004_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1004_2;
    c_1004_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001x1zxz00z1xxz1zzxx00xx1101100xzxzzzzzzzzxxxxzzzxxzzxxzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
