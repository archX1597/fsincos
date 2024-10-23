class c_1547_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1547_2;
    c_1547_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx01xxzzz0z1zzx1zz00zz0zzz1x10x0zzzzxxxxzzzxzxxxzzxzxxzzzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
