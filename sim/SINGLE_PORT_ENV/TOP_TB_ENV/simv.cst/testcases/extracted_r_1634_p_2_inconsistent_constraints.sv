class c_1634_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1634_2;
    c_1634_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxx1z00xzz10010z01x1zzzzzxx01zxxzxzzzzzzxxxzzzzxzxzxxxxxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
