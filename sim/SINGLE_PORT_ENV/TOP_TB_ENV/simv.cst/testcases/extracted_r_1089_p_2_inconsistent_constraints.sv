class c_1089_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1089_2;
    c_1089_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzx1xx00x01x1xz01x1z01z11z11xxzzxxxzxxzzxxxzxxxzxzzzxxxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
