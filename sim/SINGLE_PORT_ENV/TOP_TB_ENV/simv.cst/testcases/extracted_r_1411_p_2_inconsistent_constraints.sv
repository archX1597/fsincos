class c_1411_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1411_2;
    c_1411_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xx10x01xz11zzx0z0011zzz00x1z00zzxxzzxxzxxxxxzxxzzxxzxzzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
