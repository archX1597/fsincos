class c_1139_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1139_2;
    c_1139_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1101z01z11110xx10zx0zz010xzx0x1zzxxxxzxzxxzxxxzxxxzzxzxxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
