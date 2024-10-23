class c_1308_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1308_2;
    c_1308_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz101z0z1zz1zx1z00z0x10z0z100xxzxzzxzxxxxxzxxxzzzxzxzxxxxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
