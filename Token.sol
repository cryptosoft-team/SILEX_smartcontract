pragma solidity 0.5.16;

import "./interface/IBEP20.sol";
import "./lib/Context.sol";
import "./lib/Ownable.sol";
import "./lib/SafeMath.sol";

contract Token is Context, IBEP20, Ownable {
  using SafeMath for uint256;

  mapping (address => uint256) private _balances;

  mapping (address => mapping (address => uint256)) private _allowances;

  uint256 private _totalSupply;
  uint256 private _initSupply;
  uint8 private _decimals;
  string private _symbol;
  string private _name;

  uint256 private _amount1;
  uint256 private _time1;
  uint256 private _amount2;
  uint256 private _time2;
  uint256 private _amount3;
  uint256 private _time3;
  uint256 private _amount4;
  uint256 private _time4;
  uint256 private _amount5;
  uint256 private _time5;
  uint256 private _amount6;
  uint256 private _time6;
  uint256 private _amount7;
  uint256 private _time7;
  uint256 private _amount8;
  uint256 private _time8;
  uint256 private _amount9;
  uint256 private _time9;
  uint256 private _amount10;
  uint256 private _time10;
  uint256 private _amount11;
  uint256 private _time11;
  uint256 private _amount12;
  uint256 private _time12;
  uint256 private _amount13;
  uint256 private _time13;
  uint256 private _amount14;
  uint256 private _time14;
  uint256 private _amount15;
  uint256 private _time15;
  uint256 private _amount16;
  uint256 private _time16;
  uint256 private _amount17;
  uint256 private _time17;
  uint256 private _amount18;
  uint256 private _time18;
  uint256 private _amount19;
  uint256 private _time19;
  uint256 private _amount20;
  uint256 private _time20;
  uint256 private _amount21;
  uint256 private _time21;
  uint256 private _amount22;
  uint256 private _time22;
  uint256 private _amount23;
  uint256 private _time23;
  uint256 private _amount24;
  uint256 private _time24;
  uint256 private _amount25;
  uint256 private _time25;
  uint256 private _amount26;
  uint256 private _time26;
  uint256 private _amount27;
  uint256 private _time27;


  constructor() public {
    _name = "SILEX";
    _symbol = "SLX";
    _decimals = 18;

    // 100.000.000
    _totalSupply = 100000000000000000000000000;
    _initSupply = _totalSupply;

    // 01.06.2022 12:00:00 amount unlock: 4.833.333
    _amount1 = 4833333000000000000000000;
    _time1 = 1654084800;
    // 08.06.2022 12:00:00 amount unlock: 3.133.333
    _amount2 = 3133333000000000000000000;
    _time2 = 1654689600;
    // 15.06.2022 12:00:00 amount unlock: 3.133.333
    _amount3 = 3133333000000000000000000;
    _time3 = 1655294400;

    // 01.09.2022 12:00:00 amount unlock: 4.633.333
    _amount4 = 4633333000000000000000000;
    _time4 = 1662033600;
    // 08.09.2022 12:00:00 amount unlock: 4.633.333
    _amount5 = 4633333000000000000000000;
    _time5 = 1662638400;
    // 15.09.2022 12:00:00 amount unlock: 4.633.333
    _amount6 = 4633333000000000000000000;
    _time6 = 1663243200;

    // 01.12.2022 12:00:00 amount unlock: 4.033.333
    _amount7 = 4033333000000000000000000;
    _time7 = 1669896000;
    // 08.12.2022 12:00:00 amount unlock: 4.033.333
    _amount8 = 4033333000000000000000000;
    _time8 = 1670500800;
    // 15.12.2022 12:00:00 amount unlock: 4.033.333
    _amount9 = 4033333000000000000000000;
    _time9 = 1671105600;

    // 01.03.2023 12:00:00 amount unlock: 5.033.333
    _amount10 = 5033333000000000000000000;
    _time10 = 1677672000;
    // 08.03.2023 12:00:00 amount unlock: 5.033.333
    _amount11 = 5033333000000000000000000;
    _time11 = 1678276800;
    // 15.03.2023 12:00:00 amount unlock: 5.033.333
    _amount12 = 5033333000000000000000000;
    _time12 = 1678881600;

    // 01.06.2023 12:00:00 amount unlock: 5.033.333
    _amount13 = 5033333000000000000000000;
    _time13 = 1685620800;
    // 08.06.2023 12:00:00 amount unlock: 5.033.333
    _amount14 = 5033333000000000000000000;
    _time14 = 1686225600;
    // 15.06.2023 12:00:00 amount unlock: 5.033.333
    _amount15 = 5033333000000000000000000;
    _time15 = 1686830400;

    // 01.09.2023 12:00:00 amount unlock: 4.033.333
    _amount16 = 4033333000000000000000000;
    _time16 = 1693569600;
    // 08.09.2023 12:00:00 amount unlock: 3.533.333
    _amount17 = 3533333000000000000000000;
    _time17 = 1694174400;
    // 15.09.2023 12:00:00 amount unlock: 3.533.333
    _amount18 = 3533333000000000000000000;
    _time18 = 1694779200;

    // 01.12.2023 12:00:00 amount unlock: 3.533.333
    _amount19 = 3533333000000000000000000;
    _time19 = 1701432000;
    // 08.12.2023 12:00:00 amount unlock: 3.533.333
    _amount20 = 3533333000000000000000000;
    _time20 = 1702036800;
    // 15.12.2023 12:00:00 amount unlock: 3.533.333
    _amount21 = 3533333000000000000000000;
    _time21 = 1702641600;

    // 01.03.2024 12:00:00 amount unlock: 3.233.333
    _amount22 = 3233333000000000000000000;
    _time22 = 1709294400;
    // 08.03.2024 12:00:00 amount unlock: 3.233.333
    _amount23 = 3233333000000000000000000;
    _time23 = 1709899200;
    // 15.03.2024 12:00:00 amount unlock: 1.733.333
    _amount24 = 1733333000000000000000000;
    _time24 = 1710504000;

    // 01.06.2024 12:00:00 amount unlock: 1.400.000
    _amount25 = 1400000000000000000000000;
    _time25 = 1717243200;
    // 08.06.2024 12:00:00 amount unlock: 1.400.000
    _amount26 = 1400000000000000000000000;
    _time26 = 1717848000;

    // 08.06.2024 12:00:00 amount unlock: 8 [Mathematical remainder]
    _amount27 = 8000000000000000000;
    _time27 = 1717848000;

    _balances[msg.sender] = _totalSupply;
    emit Transfer(address(0), msg.sender, _totalSupply);
  }

  /**
   * @dev Returns the bep token owner.
   */
  function getOwner() external view returns (address) {
    return owner();
  }

  /**
   * @dev Returns the token decimals.
   */
  function decimals() external view returns (uint8) {
    return _decimals;
  }

  /**
   * @dev Returns the token symbol.
   */
  function symbol() external view returns (string memory) {
    return _symbol;
  }

  /**
  * @dev Returns the token name.
  */
  function name() external view returns (string memory) {
    return _name;
  }

  /**
   * @dev See {BEP20-totalSupply}.
   */
  function totalSupply() external view returns (uint256) {
    return _totalSupply;
  }

  /**
   * @dev See {BEP20-balanceOf}.
   */
  function balanceOf(address account) external view returns (uint256) {
    return _balances[account];
  }

  /**
   * @dev See {BEP20-transfer}.
   *
   * Requirements:
   *
   * - `recipient` cannot be the zero address.
   * - the caller must have a balance of at least `amount`.
   */
  function transfer(address recipient, uint256 amount) notOwner() external returns (bool) {
    _transfer(_msgSender(), recipient, amount);
    return true;
  }

  /**
   * @dev See {BEP20-transfer}.
   *
   * Requirements:
   *
   * - msg.sender must be owner of token
   * - control time and amount limits
   * - `recipient` cannot be the zero address.
   * - the caller must have a balance of at least `amount`.
   */
  function transferOwner(address recipient, uint256 amount) onlyOwner() external returns (bool) {
    uint256 allowedAmount = 0;
    if (block.timestamp > _time1) {
      allowedAmount += _amount1;
    }
    if (block.timestamp > _time2) {
      allowedAmount += _amount2;
    }
    if (block.timestamp > _time3) {
      allowedAmount += _amount3;
    }
    if (block.timestamp > _time4) {
      allowedAmount += _amount4;
    }
    if (block.timestamp > _time5) {
      allowedAmount += _amount5;
    }
    if (block.timestamp > _time6) {
      allowedAmount += _amount6;
    }
    if (block.timestamp > _time7) {
      allowedAmount += _amount7;
    }
    if (block.timestamp > _time8) {
      allowedAmount += _amount8;
    }
    if (block.timestamp > _time9) {
      allowedAmount += _amount9;
    }
    if (block.timestamp > _time10) {
      allowedAmount += _amount10;
    }
    if (block.timestamp > _time11) {
      allowedAmount += _amount11;
    }
    if (block.timestamp > _time12) {
      allowedAmount += _amount12;
    }
    if (block.timestamp > _time13) {
      allowedAmount += _amount13;
    }
    if (block.timestamp > _time14) {
      allowedAmount += _amount14;
    }
    if (block.timestamp > _time15) {
      allowedAmount += _amount15;
    }
    if (block.timestamp > _time16) {
      allowedAmount += _amount16;
    }
    if (block.timestamp > _time17) {
      allowedAmount += _amount17;
    }
    if (block.timestamp > _time18) {
      allowedAmount += _amount18;
    }
    if (block.timestamp > _time19) {
      allowedAmount += _amount19;
    }
    if (block.timestamp > _time20) {
      allowedAmount += _amount20;
    }
    if (block.timestamp > _time21) {
      allowedAmount += _amount21;
    }
    if (block.timestamp > _time22) {
      allowedAmount += _amount22;
    }
    if (block.timestamp > _time23) {
      allowedAmount += _amount23;
    }
    if (block.timestamp > _time24) {
      allowedAmount += _amount24;
    }
    if (block.timestamp > _time25) {
      allowedAmount += _amount25;
    }
    if (block.timestamp > _time26) {
      allowedAmount += _amount26;
    }
    if (block.timestamp > _time27) {
      allowedAmount += _amount27;
    }
    require(_balances[owner()] - amount >= _initSupply - allowedAmount, "All tokens allowed for this phase have been transferred");
    _transfer(_msgSender(), recipient, amount);
    return true;
  }

  /**
   * @dev See {BEP20-allowance}.
   */
  function allowance(address owner, address spender) notOwner external view returns (uint256) {
    return _allowances[owner][spender];
  }

  /**
   * @dev See {BEP20-approve}.
   *
   * Requirements:
   *
   * - `spender` cannot be the zero address.
   */
  function approve(address spender, uint256 amount) notOwner external returns (bool) {
    _approve(_msgSender(), spender, amount);
    return true;
  }

  /**
   * @dev See {BEP20-transferFrom}.
   *
   * Emits an {Approval} event indicating the updated allowance. This is not
   * required by the EIP. See the note at the beginning of {BEP20};
   *
   * Requirements:
   * - `sender` and `recipient` cannot be the zero address.
   * - `sender` must have a balance of at least `amount`.
   * - the caller must have allowance for `sender`'s tokens of at least
   * `amount`.
   */
  function transferFrom(address sender, address recipient, uint256 amount) notOwner external returns (bool) {
    _transfer(sender, recipient, amount);
    _approve(sender, _msgSender(), _allowances[sender][_msgSender()].sub(amount, "BEP20: transfer amount exceeds allowance"));
    return true;
  }

  /**
   * @dev Atomically increases the allowance granted to `spender` by the caller.
   *
   * This is an alternative to {approve} that can be used as a mitigation for
   * problems described in {BEP20-approve}.
   *
   * Emits an {Approval} event indicating the updated allowance.
   *
   * Requirements:
   *
   * - `spender` cannot be the zero address.
   */
  function increaseAllowance(address spender, uint256 addedValue) notOwner public returns (bool) {
    _approve(_msgSender(), spender, _allowances[_msgSender()][spender].add(addedValue));
    return true;
  }

  /**
   * @dev Atomically decreases the allowance granted to `spender` by the caller.
   *
   * This is an alternative to {approve} that can be used as a mitigation for
   * problems described in {BEP20-approve}.
   *
   * Emits an {Approval} event indicating the updated allowance.
   *
   * Requirements:
   *
   * - `spender` cannot be the zero address.
   * - `spender` must have allowance for the caller of at least
   * `subtractedValue`.
   */
  function decreaseAllowance(address spender, uint256 subtractedValue) notOwner public returns (bool) {
    _approve(_msgSender(), spender, _allowances[_msgSender()][spender].sub(subtractedValue, "BEP20: decreased allowance below zero"));
    return true;
  }

  /**
   * @dev Creates `amount` tokens and assigns them to `msg.sender`, increasing
   * the total supply.
   *
   * Requirements
   *
   * - `msg.sender` must be the token owner
   */
  function mint(uint256 amount) public returns (bool) {
    _mint(_msgSender(), amount);
    return true;
  }

    /**
   @dev Destroys `amount` tokens from `account`, reducing the
   * total supply.
   *
   * Requirements
   *
   * - `msg.sender` must be the token owner and cant be the owner of contract
   */
  function burn(uint256 amount) public notOwner returns (bool) {
    _burn(_msgSender(), amount);
    return true;
  }

  /**
   * @dev Moves tokens `amount` from `sender` to `recipient`.
   *
   * This is internal function is equivalent to {transfer}, and can be used to
   * e.g. implement automatic token fees, slashing mechanisms, etc.
   *
   * Emits a {Transfer} event.
   *
   * Requirements:
   *
   * - `sender` cannot be the zero address.
   * - `recipient` cannot be the zero address.
   * - `sender` must have a balance of at least `amount`.
   */
  function _transfer(address sender, address recipient, uint256 amount) internal {
    require(sender != address(0), "BEP20: transfer from the zero address");
    require(recipient != address(0), "BEP20: transfer to the zero address");

    _balances[sender] = _balances[sender].sub(amount, "BEP20: transfer amount exceeds balance");
    _balances[recipient] = _balances[recipient].add(amount);
    emit Transfer(sender, recipient, amount);
  }

  /** @dev Creates `amount` tokens and assigns them to `account`, increasing
   * the total supply.
   *
   * Emits a {Transfer} event with `from` set to the zero address.
   *
   * Requirements
   *
   * - `to` cannot be the zero address.
   */
  function _mint(address account, uint256 amount) internal {
    require(false, "All tokens has been minted when contract was deployed");
  }

  /**
   * @dev Destroys `amount` tokens from `account`, reducing the
   * total supply.
   *
   * Emits a {Transfer} event with `to` set to the zero address.
   *
   * Requirements
   *
   * - `account` cannot be the zero address.
   * - `account` must have at least `amount` tokens.
   */
  function _burn(address account, uint256 amount) internal {
    require(account != address(0), "BEP20: burn from the zero address");

    _balances[account] = _balances[account].sub(amount, "BEP20: burn amount exceeds balance");
    _totalSupply = _totalSupply.sub(amount);
    emit Transfer(account, address(0), amount);
  }

  /**
   * @dev Sets `amount` as the allowance of `spender` over the `owner`s tokens.
   *
   * This is internal function is equivalent to `approve`, and can be used to
   * e.g. set automatic allowances for certain subsystems, etc.
   *
   * Emits an {Approval} event.
   *
   * Requirements:
   *
   * - `owner` cannot be the zero address.
   * - `spender` cannot be the zero address.
   */
  function _approve(address owner, address spender, uint256 amount) internal {
    require(owner != address(0), "BEP20: approve from the zero address");
    require(spender != address(0), "BEP20: approve to the zero address");

    _allowances[owner][spender] = amount;
    emit Approval(owner, spender, amount);
  }

  /**
   * @dev Destroys `amount` tokens from `account`.`amount` is then deducted
   * from the caller's allowance.
   *
   * See {_burn} and {_approve}.
   */
  function _burnFrom(address account, uint256 amount) internal {
    _burn(account, amount);
    _approve(account, _msgSender(), _allowances[account][_msgSender()].sub(amount, "BEP20: burn amount exceeds allowance"));
  }
}
