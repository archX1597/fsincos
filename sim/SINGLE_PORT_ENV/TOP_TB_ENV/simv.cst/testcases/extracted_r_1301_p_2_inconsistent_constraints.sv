class c_1301_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1301_2;
    c_1301_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x11x1zxxz00zz000x11010x011zxz1zxzxxxxzxzxzzzzzzzxxxxxzxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
