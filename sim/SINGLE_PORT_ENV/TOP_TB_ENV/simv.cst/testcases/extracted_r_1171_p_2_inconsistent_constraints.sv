class c_1171_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1171_2;
    c_1171_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z0001z1xx00x110x011x10z110zxz0zzxxzzzxxzxxzzzzzxzzxxzxzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
