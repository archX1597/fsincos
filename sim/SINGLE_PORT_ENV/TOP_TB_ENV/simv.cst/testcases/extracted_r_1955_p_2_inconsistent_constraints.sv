class c_1955_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1955_2;
    c_1955_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010xxx0z1001zxz1x1z1zxz1z1z1x1xzxzzzzzxzxxzxxzxxxzxzxxzxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
