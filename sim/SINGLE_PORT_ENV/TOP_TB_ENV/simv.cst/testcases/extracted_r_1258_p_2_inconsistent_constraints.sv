class c_1258_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1258_2;
    c_1258_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx10xx1zxzz1xxx01zx000001zz11xzzxzxxzzzxzxzzxzzxzxxxxxzzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
