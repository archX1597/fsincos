class c_1370_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1370_2;
    c_1370_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1xx1x1x1xz10x1zz110z1zzz001zxzxzxxzzxzxzxzxxxzxzxzxzzzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
