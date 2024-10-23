class c_1342_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1342_2;
    c_1342_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx0z01x1x0010010z110z1x0x0xz00zxzzxxxxzzzxzxxxzzxzxzxzxxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
