class c_1956_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1956_2;
    c_1956_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x011x001xxzx011zx1z101x1zx1x010xxzxzxzxxxxzxxxxxxxxzzzzzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
