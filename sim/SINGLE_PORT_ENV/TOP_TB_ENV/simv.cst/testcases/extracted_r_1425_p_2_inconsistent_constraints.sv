class c_1425_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1425_2;
    c_1425_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xz01x1z0010001110011x1z1xz0x10xzxzxxzxzxxxxzzzxzzzxzzxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
