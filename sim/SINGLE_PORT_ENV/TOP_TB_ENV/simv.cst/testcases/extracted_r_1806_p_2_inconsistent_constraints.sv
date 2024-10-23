class c_1806_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1806_2;
    c_1806_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx110x1zzx1zxx0zz10x0zx1110xz10xzxxxxxzxzxzzzxzzxzzxxxxxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
